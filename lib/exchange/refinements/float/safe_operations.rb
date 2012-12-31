module Exchange
  
  # Make Floating Points forget about their incapabilities when dealing with money
  #
  module SafeOperations
    
    refine Float do
      
      def * other
        if other.is_a?(Exchange::Money)
          (BigDecimal.new(self.to_s) * other.value).to_f
        else
          super(other)
        end
      end
      
      def + other
        if other.is_a?(Exchange::Money)
          (BigDecimal.new(self.to_s) + other.value).to_f
        else
          super(other)
        end
      end
      
      def - other
        if other.is_a?(Exchange::Money)
          (BigDecimal.new(self.to_s) - other.value).to_f
        else
          super(other)
        end
      end
      
      def / other
        if other.is_a?(Exchange::Money)
          (BigDecimal.new(self.to_s) / other.value).to_f
        else
          super(other)
        end
      end
 
    end
    
  end
  
end
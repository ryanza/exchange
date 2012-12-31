module Exchange
  module Cachify
    refinement = proc {
      def cachify
        Marshal.dump self
      end
    }
    
    refine Numeric,   &refinement
    refine String,    &refinement
    refine Symbol,    &refinement
    refine Hash,      &refinement
    refine Array,     &refinement
    refine NilClass,  &refinement

  end
  
  module Decachify
    
    refine String do
      def decachify
        Marshal.load self
      end
    end
  
  end
end
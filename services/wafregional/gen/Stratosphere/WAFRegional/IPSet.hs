module Stratosphere.WAFRegional.IPSet (
        module Exports, IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.IPSet.IPSetDescriptorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPSet
  = IPSet {iPSetDescriptors :: (Prelude.Maybe [IPSetDescriptorProperty]),
           name :: (Value Prelude.Text)}
mkIPSet :: Value Prelude.Text -> IPSet
mkIPSet name
  = IPSet {name = name, iPSetDescriptors = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::IPSet",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "IPSetDescriptors" Prelude.<$> iPSetDescriptors]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "IPSetDescriptors" Prelude.<$> iPSetDescriptors])))
instance Property "IPSetDescriptors" IPSet where
  type PropertyType "IPSetDescriptors" IPSet = [IPSetDescriptorProperty]
  set newValue IPSet {..}
    = IPSet {iPSetDescriptors = Prelude.pure newValue, ..}
instance Property "Name" IPSet where
  type PropertyType "Name" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {name = newValue, ..}
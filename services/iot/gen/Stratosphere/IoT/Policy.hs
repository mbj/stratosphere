module Stratosphere.IoT.Policy (
        Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Policy
  = Policy {policyDocument :: JSON.Object,
            policyName :: (Prelude.Maybe (Value Prelude.Text))}
mkPolicy :: JSON.Object -> Policy
mkPolicy policyDocument
  = Policy
      {policyDocument = policyDocument, policyName = Prelude.Nothing}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Policy", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyName" Prelude.<$> policyName]))}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyName" Prelude.<$> policyName])))
instance Property "PolicyDocument" Policy where
  type PropertyType "PolicyDocument" Policy = JSON.Object
  set newValue Policy {..} = Policy {policyDocument = newValue, ..}
instance Property "PolicyName" Policy where
  type PropertyType "PolicyName" Policy = Value Prelude.Text
  set newValue Policy {..}
    = Policy {policyName = Prelude.pure newValue, ..}
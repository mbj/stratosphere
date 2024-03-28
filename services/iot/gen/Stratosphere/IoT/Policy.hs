module Stratosphere.IoT.Policy (
        Policy(..), mkPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Policy
  = Policy {policyDocument :: JSON.Object,
            policyName :: (Prelude.Maybe (Value Prelude.Text)),
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicy :: JSON.Object -> Policy
mkPolicy policyDocument
  = Policy
      {policyDocument = policyDocument, policyName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Policy where
  toResourceProperties Policy {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Policy", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "PolicyName" Prelude.<$> policyName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Policy where
  toJSON Policy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument]
              (Prelude.catMaybes
                 [(JSON..=) "PolicyName" Prelude.<$> policyName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PolicyDocument" Policy where
  type PropertyType "PolicyDocument" Policy = JSON.Object
  set newValue Policy {..} = Policy {policyDocument = newValue, ..}
instance Property "PolicyName" Policy where
  type PropertyType "PolicyName" Policy = Value Prelude.Text
  set newValue Policy {..}
    = Policy {policyName = Prelude.pure newValue, ..}
instance Property "Tags" Policy where
  type PropertyType "Tags" Policy = [Tag]
  set newValue Policy {..}
    = Policy {tags = Prelude.pure newValue, ..}
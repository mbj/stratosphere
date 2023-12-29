module Stratosphere.EC2.VerifiedAccessGroup (
        VerifiedAccessGroup(..), mkVerifiedAccessGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VerifiedAccessGroup
  = VerifiedAccessGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                         policyDocument :: (Prelude.Maybe (Value Prelude.Text)),
                         policyEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                         tags :: (Prelude.Maybe [Tag]),
                         verifiedAccessInstanceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerifiedAccessGroup :: Value Prelude.Text -> VerifiedAccessGroup
mkVerifiedAccessGroup verifiedAccessInstanceId
  = VerifiedAccessGroup
      {verifiedAccessInstanceId = verifiedAccessInstanceId,
       description = Prelude.Nothing, policyDocument = Prelude.Nothing,
       policyEnabled = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VerifiedAccessGroup where
  toResourceProperties VerifiedAccessGroup {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VerifiedAccessInstanceId" JSON..= verifiedAccessInstanceId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                               (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON VerifiedAccessGroup where
  toJSON VerifiedAccessGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VerifiedAccessInstanceId" JSON..= verifiedAccessInstanceId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PolicyDocument" Prelude.<$> policyDocument,
                  (JSON..=) "PolicyEnabled" Prelude.<$> policyEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" VerifiedAccessGroup where
  type PropertyType "Description" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {description = Prelude.pure newValue, ..}
instance Property "PolicyDocument" VerifiedAccessGroup where
  type PropertyType "PolicyDocument" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {policyDocument = Prelude.pure newValue, ..}
instance Property "PolicyEnabled" VerifiedAccessGroup where
  type PropertyType "PolicyEnabled" VerifiedAccessGroup = Value Prelude.Bool
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {policyEnabled = Prelude.pure newValue, ..}
instance Property "Tags" VerifiedAccessGroup where
  type PropertyType "Tags" VerifiedAccessGroup = [Tag]
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {tags = Prelude.pure newValue, ..}
instance Property "VerifiedAccessInstanceId" VerifiedAccessGroup where
  type PropertyType "VerifiedAccessInstanceId" VerifiedAccessGroup = Value Prelude.Text
  set newValue VerifiedAccessGroup {..}
    = VerifiedAccessGroup {verifiedAccessInstanceId = newValue, ..}
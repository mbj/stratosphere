module Stratosphere.S3.Bucket.OwnershipControlsRuleProperty (
        OwnershipControlsRuleProperty(..), mkOwnershipControlsRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OwnershipControlsRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrolsrule.html>
    OwnershipControlsRuleProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ownershipcontrolsrule.html#cfn-s3-bucket-ownershipcontrolsrule-objectownership>
                                   objectOwnership :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOwnershipControlsRuleProperty :: OwnershipControlsRuleProperty
mkOwnershipControlsRuleProperty
  = OwnershipControlsRuleProperty
      {haddock_workaround_ = (), objectOwnership = Prelude.Nothing}
instance ToResourceProperties OwnershipControlsRuleProperty where
  toResourceProperties OwnershipControlsRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.OwnershipControlsRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ObjectOwnership" Prelude.<$> objectOwnership])}
instance JSON.ToJSON OwnershipControlsRuleProperty where
  toJSON OwnershipControlsRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ObjectOwnership" Prelude.<$> objectOwnership]))
instance Property "ObjectOwnership" OwnershipControlsRuleProperty where
  type PropertyType "ObjectOwnership" OwnershipControlsRuleProperty = Value Prelude.Text
  set newValue OwnershipControlsRuleProperty {..}
    = OwnershipControlsRuleProperty
        {objectOwnership = Prelude.pure newValue, ..}
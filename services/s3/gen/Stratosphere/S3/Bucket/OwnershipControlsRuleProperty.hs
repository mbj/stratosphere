module Stratosphere.S3.Bucket.OwnershipControlsRuleProperty (
        OwnershipControlsRuleProperty(..), mkOwnershipControlsRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OwnershipControlsRuleProperty
  = OwnershipControlsRuleProperty {objectOwnership :: (Prelude.Maybe (Value Prelude.Text))}
mkOwnershipControlsRuleProperty :: OwnershipControlsRuleProperty
mkOwnershipControlsRuleProperty
  = OwnershipControlsRuleProperty {objectOwnership = Prelude.Nothing}
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
  set newValue OwnershipControlsRuleProperty {}
    = OwnershipControlsRuleProperty
        {objectOwnership = Prelude.pure newValue, ..}
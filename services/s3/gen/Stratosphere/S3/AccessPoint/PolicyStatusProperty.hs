module Stratosphere.S3.AccessPoint.PolicyStatusProperty (
        PolicyStatusProperty(..), mkPolicyStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatusProperty
  = PolicyStatusProperty {isPublic :: (Prelude.Maybe (Value Prelude.Text))}
mkPolicyStatusProperty :: PolicyStatusProperty
mkPolicyStatusProperty
  = PolicyStatusProperty {isPublic = Prelude.Nothing}
instance ToResourceProperties PolicyStatusProperty where
  toResourceProperties PolicyStatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::AccessPoint.PolicyStatus",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsPublic" Prelude.<$> isPublic])}
instance JSON.ToJSON PolicyStatusProperty where
  toJSON PolicyStatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsPublic" Prelude.<$> isPublic]))
instance Property "IsPublic" PolicyStatusProperty where
  type PropertyType "IsPublic" PolicyStatusProperty = Value Prelude.Text
  set newValue PolicyStatusProperty {}
    = PolicyStatusProperty {isPublic = Prelude.pure newValue, ..}
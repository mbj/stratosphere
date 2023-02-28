module Stratosphere.S3ObjectLambda.AccessPoint.PolicyStatusProperty (
        PolicyStatusProperty(..), mkPolicyStatusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyStatusProperty
  = PolicyStatusProperty {isPublic :: (Prelude.Maybe (Value Prelude.Bool))}
mkPolicyStatusProperty :: PolicyStatusProperty
mkPolicyStatusProperty
  = PolicyStatusProperty {isPublic = Prelude.Nothing}
instance ToResourceProperties PolicyStatusProperty where
  toResourceProperties PolicyStatusProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.PolicyStatus",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "IsPublic" Prelude.<$> isPublic])}
instance JSON.ToJSON PolicyStatusProperty where
  toJSON PolicyStatusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "IsPublic" Prelude.<$> isPublic]))
instance Property "IsPublic" PolicyStatusProperty where
  type PropertyType "IsPublic" PolicyStatusProperty = Value Prelude.Bool
  set newValue PolicyStatusProperty {}
    = PolicyStatusProperty {isPublic = Prelude.pure newValue, ..}
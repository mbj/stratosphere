module Stratosphere.FSx.DataRepositoryAssociation.AutoImportPolicyProperty (
        AutoImportPolicyProperty(..), mkAutoImportPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoImportPolicyProperty
  = AutoImportPolicyProperty {events :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoImportPolicyProperty ::
  ValueList Prelude.Text -> AutoImportPolicyProperty
mkAutoImportPolicyProperty events
  = AutoImportPolicyProperty {events = events}
instance ToResourceProperties AutoImportPolicyProperty where
  toResourceProperties AutoImportPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::DataRepositoryAssociation.AutoImportPolicy",
         supportsTags = Prelude.False,
         properties = ["Events" JSON..= events]}
instance JSON.ToJSON AutoImportPolicyProperty where
  toJSON AutoImportPolicyProperty {..}
    = JSON.object ["Events" JSON..= events]
instance Property "Events" AutoImportPolicyProperty where
  type PropertyType "Events" AutoImportPolicyProperty = ValueList Prelude.Text
  set newValue AutoImportPolicyProperty {}
    = AutoImportPolicyProperty {events = newValue, ..}
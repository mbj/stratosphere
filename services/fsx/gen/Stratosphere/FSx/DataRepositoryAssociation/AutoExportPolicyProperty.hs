module Stratosphere.FSx.DataRepositoryAssociation.AutoExportPolicyProperty (
        AutoExportPolicyProperty(..), mkAutoExportPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoExportPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-autoexportpolicy.html>
    AutoExportPolicyProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-datarepositoryassociation-autoexportpolicy.html#cfn-fsx-datarepositoryassociation-autoexportpolicy-events>
                              events :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoExportPolicyProperty ::
  ValueList Prelude.Text -> AutoExportPolicyProperty
mkAutoExportPolicyProperty events
  = AutoExportPolicyProperty
      {haddock_workaround_ = (), events = events}
instance ToResourceProperties AutoExportPolicyProperty where
  toResourceProperties AutoExportPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::DataRepositoryAssociation.AutoExportPolicy",
         supportsTags = Prelude.False,
         properties = ["Events" JSON..= events]}
instance JSON.ToJSON AutoExportPolicyProperty where
  toJSON AutoExportPolicyProperty {..}
    = JSON.object ["Events" JSON..= events]
instance Property "Events" AutoExportPolicyProperty where
  type PropertyType "Events" AutoExportPolicyProperty = ValueList Prelude.Text
  set newValue AutoExportPolicyProperty {..}
    = AutoExportPolicyProperty {events = newValue, ..}
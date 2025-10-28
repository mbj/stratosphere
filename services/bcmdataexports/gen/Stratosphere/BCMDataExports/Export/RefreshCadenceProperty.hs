module Stratosphere.BCMDataExports.Export.RefreshCadenceProperty (
        RefreshCadenceProperty(..), mkRefreshCadenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshCadenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-refreshcadence.html>
    RefreshCadenceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bcmdataexports-export-refreshcadence.html#cfn-bcmdataexports-export-refreshcadence-frequency>
                            frequency :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRefreshCadenceProperty ::
  Value Prelude.Text -> RefreshCadenceProperty
mkRefreshCadenceProperty frequency
  = RefreshCadenceProperty
      {haddock_workaround_ = (), frequency = frequency}
instance ToResourceProperties RefreshCadenceProperty where
  toResourceProperties RefreshCadenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::BCMDataExports::Export.RefreshCadence",
         supportsTags = Prelude.False,
         properties = ["Frequency" JSON..= frequency]}
instance JSON.ToJSON RefreshCadenceProperty where
  toJSON RefreshCadenceProperty {..}
    = JSON.object ["Frequency" JSON..= frequency]
instance Property "Frequency" RefreshCadenceProperty where
  type PropertyType "Frequency" RefreshCadenceProperty = Value Prelude.Text
  set newValue RefreshCadenceProperty {..}
    = RefreshCadenceProperty {frequency = newValue, ..}
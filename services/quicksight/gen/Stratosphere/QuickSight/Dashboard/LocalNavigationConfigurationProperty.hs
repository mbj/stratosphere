module Stratosphere.QuickSight.Dashboard.LocalNavigationConfigurationProperty (
        LocalNavigationConfigurationProperty(..),
        mkLocalNavigationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalNavigationConfigurationProperty
  = LocalNavigationConfigurationProperty {targetSheetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalNavigationConfigurationProperty ::
  Value Prelude.Text -> LocalNavigationConfigurationProperty
mkLocalNavigationConfigurationProperty targetSheetId
  = LocalNavigationConfigurationProperty
      {targetSheetId = targetSheetId}
instance ToResourceProperties LocalNavigationConfigurationProperty where
  toResourceProperties LocalNavigationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LocalNavigationConfiguration",
         supportsTags = Prelude.False,
         properties = ["TargetSheetId" JSON..= targetSheetId]}
instance JSON.ToJSON LocalNavigationConfigurationProperty where
  toJSON LocalNavigationConfigurationProperty {..}
    = JSON.object ["TargetSheetId" JSON..= targetSheetId]
instance Property "TargetSheetId" LocalNavigationConfigurationProperty where
  type PropertyType "TargetSheetId" LocalNavigationConfigurationProperty = Value Prelude.Text
  set newValue LocalNavigationConfigurationProperty {}
    = LocalNavigationConfigurationProperty
        {targetSheetId = newValue, ..}
module Stratosphere.QuickSight.Template.LocalNavigationConfigurationProperty (
        LocalNavigationConfigurationProperty(..),
        mkLocalNavigationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalNavigationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-localnavigationconfiguration.html>
    LocalNavigationConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-localnavigationconfiguration.html#cfn-quicksight-template-localnavigationconfiguration-targetsheetid>
                                          targetSheetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocalNavigationConfigurationProperty ::
  Value Prelude.Text -> LocalNavigationConfigurationProperty
mkLocalNavigationConfigurationProperty targetSheetId
  = LocalNavigationConfigurationProperty
      {haddock_workaround_ = (), targetSheetId = targetSheetId}
instance ToResourceProperties LocalNavigationConfigurationProperty where
  toResourceProperties LocalNavigationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LocalNavigationConfiguration",
         supportsTags = Prelude.False,
         properties = ["TargetSheetId" JSON..= targetSheetId]}
instance JSON.ToJSON LocalNavigationConfigurationProperty where
  toJSON LocalNavigationConfigurationProperty {..}
    = JSON.object ["TargetSheetId" JSON..= targetSheetId]
instance Property "TargetSheetId" LocalNavigationConfigurationProperty where
  type PropertyType "TargetSheetId" LocalNavigationConfigurationProperty = Value Prelude.Text
  set newValue LocalNavigationConfigurationProperty {..}
    = LocalNavigationConfigurationProperty
        {targetSheetId = newValue, ..}
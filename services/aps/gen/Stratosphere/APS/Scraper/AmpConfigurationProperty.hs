module Stratosphere.APS.Scraper.AmpConfigurationProperty (
        AmpConfigurationProperty(..), mkAmpConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmpConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-ampconfiguration.html>
    AmpConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-ampconfiguration.html#cfn-aps-scraper-ampconfiguration-workspacearn>
                              workspaceArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAmpConfigurationProperty ::
  Value Prelude.Text -> AmpConfigurationProperty
mkAmpConfigurationProperty workspaceArn
  = AmpConfigurationProperty
      {haddock_workaround_ = (), workspaceArn = workspaceArn}
instance ToResourceProperties AmpConfigurationProperty where
  toResourceProperties AmpConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.AmpConfiguration",
         supportsTags = Prelude.False,
         properties = ["WorkspaceArn" JSON..= workspaceArn]}
instance JSON.ToJSON AmpConfigurationProperty where
  toJSON AmpConfigurationProperty {..}
    = JSON.object ["WorkspaceArn" JSON..= workspaceArn]
instance Property "WorkspaceArn" AmpConfigurationProperty where
  type PropertyType "WorkspaceArn" AmpConfigurationProperty = Value Prelude.Text
  set newValue AmpConfigurationProperty {..}
    = AmpConfigurationProperty {workspaceArn = newValue, ..}
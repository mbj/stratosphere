module Stratosphere.APS.Scraper.RoleConfigurationProperty (
        RoleConfigurationProperty(..), mkRoleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-roleconfiguration.html>
    RoleConfigurationProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-roleconfiguration.html#cfn-aps-scraper-roleconfiguration-sourcerolearn>
                               sourceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-aps-scraper-roleconfiguration.html#cfn-aps-scraper-roleconfiguration-targetrolearn>
                               targetRoleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoleConfigurationProperty :: RoleConfigurationProperty
mkRoleConfigurationProperty
  = RoleConfigurationProperty
      {haddock_workaround_ = (), sourceRoleArn = Prelude.Nothing,
       targetRoleArn = Prelude.Nothing}
instance ToResourceProperties RoleConfigurationProperty where
  toResourceProperties RoleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::APS::Scraper.RoleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceRoleArn" Prelude.<$> sourceRoleArn,
                            (JSON..=) "TargetRoleArn" Prelude.<$> targetRoleArn])}
instance JSON.ToJSON RoleConfigurationProperty where
  toJSON RoleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceRoleArn" Prelude.<$> sourceRoleArn,
               (JSON..=) "TargetRoleArn" Prelude.<$> targetRoleArn]))
instance Property "SourceRoleArn" RoleConfigurationProperty where
  type PropertyType "SourceRoleArn" RoleConfigurationProperty = Value Prelude.Text
  set newValue RoleConfigurationProperty {..}
    = RoleConfigurationProperty
        {sourceRoleArn = Prelude.pure newValue, ..}
instance Property "TargetRoleArn" RoleConfigurationProperty where
  type PropertyType "TargetRoleArn" RoleConfigurationProperty = Value Prelude.Text
  set newValue RoleConfigurationProperty {..}
    = RoleConfigurationProperty
        {targetRoleArn = Prelude.pure newValue, ..}
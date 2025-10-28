module Stratosphere.GameLift.GameServerGroup.LaunchTemplateProperty (
        LaunchTemplateProperty(..), mkLaunchTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html>
    LaunchTemplateProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-launchtemplateid>
                            launchTemplateId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-launchtemplatename>
                            launchTemplateName :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-gameservergroup-launchtemplate.html#cfn-gamelift-gameservergroup-launchtemplate-version>
                            version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLaunchTemplateProperty :: LaunchTemplateProperty
mkLaunchTemplateProperty
  = LaunchTemplateProperty
      {haddock_workaround_ = (), launchTemplateId = Prelude.Nothing,
       launchTemplateName = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateProperty where
  toResourceProperties LaunchTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup.LaunchTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
                            (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON LaunchTemplateProperty where
  toJSON LaunchTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LaunchTemplateId" Prelude.<$> launchTemplateId,
               (JSON..=) "LaunchTemplateName" Prelude.<$> launchTemplateName,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "LaunchTemplateId" LaunchTemplateProperty where
  type PropertyType "LaunchTemplateId" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty
        {launchTemplateId = Prelude.pure newValue, ..}
instance Property "LaunchTemplateName" LaunchTemplateProperty where
  type PropertyType "LaunchTemplateName" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty
        {launchTemplateName = Prelude.pure newValue, ..}
instance Property "Version" LaunchTemplateProperty where
  type PropertyType "Version" LaunchTemplateProperty = Value Prelude.Text
  set newValue LaunchTemplateProperty {..}
    = LaunchTemplateProperty {version = Prelude.pure newValue, ..}
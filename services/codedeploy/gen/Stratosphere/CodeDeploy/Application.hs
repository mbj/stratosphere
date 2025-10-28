module Stratosphere.CodeDeploy.Application (
        Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-applicationname>
                 applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-computeplatform>
                 computePlatform :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-application.html#cfn-codedeploy-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: Application
mkApplication
  = Application
      {haddock_workaround_ = (), applicationName = Prelude.Nothing,
       computePlatform = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationName" Prelude.<$> applicationName,
                            (JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationName" Prelude.<$> applicationName,
               (JSON..=) "ComputePlatform" Prelude.<$> computePlatform,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ApplicationName" Application where
  type PropertyType "ApplicationName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationName = Prelude.pure newValue, ..}
instance Property "ComputePlatform" Application where
  type PropertyType "ComputePlatform" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {computePlatform = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}
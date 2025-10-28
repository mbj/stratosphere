module Stratosphere.SageMaker.App (
        module Exports, App(..), mkApp
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.App.ResourceSpecProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data App
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html>
    App {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-appname>
         appName :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-apptype>
         appType :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-domainid>
         domainId :: (Value Prelude.Text),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-resourcespec>
         resourceSpec :: (Prelude.Maybe ResourceSpecProperty),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-tags>
         tags :: (Prelude.Maybe [Tag]),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-app.html#cfn-sagemaker-app-userprofilename>
         userProfileName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApp ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> App
mkApp appName appType domainId userProfileName
  = App
      {haddock_workaround_ = (), appName = appName, appType = appType,
       domainId = domainId, userProfileName = userProfileName,
       resourceSpec = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties App where
  toResourceProperties App {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::App", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AppName" JSON..= appName, "AppType" JSON..= appType,
                            "DomainId" JSON..= domainId,
                            "UserProfileName" JSON..= userProfileName]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceSpec" Prelude.<$> resourceSpec,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON App where
  toJSON App {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AppName" JSON..= appName, "AppType" JSON..= appType,
               "DomainId" JSON..= domainId,
               "UserProfileName" JSON..= userProfileName]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceSpec" Prelude.<$> resourceSpec,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AppName" App where
  type PropertyType "AppName" App = Value Prelude.Text
  set newValue App {..} = App {appName = newValue, ..}
instance Property "AppType" App where
  type PropertyType "AppType" App = Value Prelude.Text
  set newValue App {..} = App {appType = newValue, ..}
instance Property "DomainId" App where
  type PropertyType "DomainId" App = Value Prelude.Text
  set newValue App {..} = App {domainId = newValue, ..}
instance Property "ResourceSpec" App where
  type PropertyType "ResourceSpec" App = ResourceSpecProperty
  set newValue App {..}
    = App {resourceSpec = Prelude.pure newValue, ..}
instance Property "Tags" App where
  type PropertyType "Tags" App = [Tag]
  set newValue App {..} = App {tags = Prelude.pure newValue, ..}
instance Property "UserProfileName" App where
  type PropertyType "UserProfileName" App = Value Prelude.Text
  set newValue App {..} = App {userProfileName = newValue, ..}
module Stratosphere.AppSync.DataSource.AwsIamConfigProperty (
        AwsIamConfigProperty(..), mkAwsIamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsIamConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html>
    AwsIamConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingregion>
                          signingRegion :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-awsiamconfig.html#cfn-appsync-datasource-awsiamconfig-signingservicename>
                          signingServiceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAwsIamConfigProperty :: AwsIamConfigProperty
mkAwsIamConfigProperty
  = AwsIamConfigProperty
      {haddock_workaround_ = (), signingRegion = Prelude.Nothing,
       signingServiceName = Prelude.Nothing}
instance ToResourceProperties AwsIamConfigProperty where
  toResourceProperties AwsIamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.AwsIamConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SigningRegion" Prelude.<$> signingRegion,
                            (JSON..=) "SigningServiceName" Prelude.<$> signingServiceName])}
instance JSON.ToJSON AwsIamConfigProperty where
  toJSON AwsIamConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SigningRegion" Prelude.<$> signingRegion,
               (JSON..=) "SigningServiceName" Prelude.<$> signingServiceName]))
instance Property "SigningRegion" AwsIamConfigProperty where
  type PropertyType "SigningRegion" AwsIamConfigProperty = Value Prelude.Text
  set newValue AwsIamConfigProperty {..}
    = AwsIamConfigProperty {signingRegion = Prelude.pure newValue, ..}
instance Property "SigningServiceName" AwsIamConfigProperty where
  type PropertyType "SigningServiceName" AwsIamConfigProperty = Value Prelude.Text
  set newValue AwsIamConfigProperty {..}
    = AwsIamConfigProperty
        {signingServiceName = Prelude.pure newValue, ..}
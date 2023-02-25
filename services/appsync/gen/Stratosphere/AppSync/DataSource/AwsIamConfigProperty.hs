module Stratosphere.AppSync.DataSource.AwsIamConfigProperty (
        AwsIamConfigProperty(..), mkAwsIamConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AwsIamConfigProperty
  = AwsIamConfigProperty {signingRegion :: (Prelude.Maybe (Value Prelude.Text)),
                          signingServiceName :: (Prelude.Maybe (Value Prelude.Text))}
mkAwsIamConfigProperty :: AwsIamConfigProperty
mkAwsIamConfigProperty
  = AwsIamConfigProperty
      {signingRegion = Prelude.Nothing,
       signingServiceName = Prelude.Nothing}
instance ToResourceProperties AwsIamConfigProperty where
  toResourceProperties AwsIamConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.AwsIamConfig",
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
module Stratosphere.IoT.JobTemplate.PresignedUrlConfigProperty (
        PresignedUrlConfigProperty(..), mkPresignedUrlConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PresignedUrlConfigProperty
  = PresignedUrlConfigProperty {expiresInSec :: (Prelude.Maybe (Value Prelude.Integer)),
                                roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPresignedUrlConfigProperty ::
  Value Prelude.Text -> PresignedUrlConfigProperty
mkPresignedUrlConfigProperty roleArn
  = PresignedUrlConfigProperty
      {roleArn = roleArn, expiresInSec = Prelude.Nothing}
instance ToResourceProperties PresignedUrlConfigProperty where
  toResourceProperties PresignedUrlConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.PresignedUrlConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ExpiresInSec" Prelude.<$> expiresInSec]))}
instance JSON.ToJSON PresignedUrlConfigProperty where
  toJSON PresignedUrlConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "ExpiresInSec" Prelude.<$> expiresInSec])))
instance Property "ExpiresInSec" PresignedUrlConfigProperty where
  type PropertyType "ExpiresInSec" PresignedUrlConfigProperty = Value Prelude.Integer
  set newValue PresignedUrlConfigProperty {..}
    = PresignedUrlConfigProperty
        {expiresInSec = Prelude.pure newValue, ..}
instance Property "RoleArn" PresignedUrlConfigProperty where
  type PropertyType "RoleArn" PresignedUrlConfigProperty = Value Prelude.Text
  set newValue PresignedUrlConfigProperty {..}
    = PresignedUrlConfigProperty {roleArn = newValue, ..}
module Stratosphere.DataBrew.Job.S3TableOutputOptionsProperty (
        module Exports, S3TableOutputOptionsProperty(..),
        mkS3TableOutputOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Job.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data S3TableOutputOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-s3tableoutputoptions.html>
    S3TableOutputOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-s3tableoutputoptions.html#cfn-databrew-job-s3tableoutputoptions-location>
                                  location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3TableOutputOptionsProperty ::
  S3LocationProperty -> S3TableOutputOptionsProperty
mkS3TableOutputOptionsProperty location
  = S3TableOutputOptionsProperty
      {haddock_workaround_ = (), location = location}
instance ToResourceProperties S3TableOutputOptionsProperty where
  toResourceProperties S3TableOutputOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.S3TableOutputOptions",
         supportsTags = Prelude.False,
         properties = ["Location" JSON..= location]}
instance JSON.ToJSON S3TableOutputOptionsProperty where
  toJSON S3TableOutputOptionsProperty {..}
    = JSON.object ["Location" JSON..= location]
instance Property "Location" S3TableOutputOptionsProperty where
  type PropertyType "Location" S3TableOutputOptionsProperty = S3LocationProperty
  set newValue S3TableOutputOptionsProperty {..}
    = S3TableOutputOptionsProperty {location = newValue, ..}
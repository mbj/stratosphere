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
  = S3TableOutputOptionsProperty {location :: S3LocationProperty}
mkS3TableOutputOptionsProperty ::
  S3LocationProperty -> S3TableOutputOptionsProperty
mkS3TableOutputOptionsProperty location
  = S3TableOutputOptionsProperty {location = location}
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
  set newValue S3TableOutputOptionsProperty {}
    = S3TableOutputOptionsProperty {location = newValue, ..}
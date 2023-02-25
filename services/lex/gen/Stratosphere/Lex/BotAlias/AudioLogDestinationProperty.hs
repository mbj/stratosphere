module Stratosphere.Lex.BotAlias.AudioLogDestinationProperty (
        module Exports, AudioLogDestinationProperty(..),
        mkAudioLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.S3BucketLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
data AudioLogDestinationProperty
  = AudioLogDestinationProperty {s3Bucket :: S3BucketLogDestinationProperty}
mkAudioLogDestinationProperty ::
  S3BucketLogDestinationProperty -> AudioLogDestinationProperty
mkAudioLogDestinationProperty s3Bucket
  = AudioLogDestinationProperty {s3Bucket = s3Bucket}
instance ToResourceProperties AudioLogDestinationProperty where
  toResourceProperties AudioLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.AudioLogDestination",
         properties = ["S3Bucket" JSON..= s3Bucket]}
instance JSON.ToJSON AudioLogDestinationProperty where
  toJSON AudioLogDestinationProperty {..}
    = JSON.object ["S3Bucket" JSON..= s3Bucket]
instance Property "S3Bucket" AudioLogDestinationProperty where
  type PropertyType "S3Bucket" AudioLogDestinationProperty = S3BucketLogDestinationProperty
  set newValue AudioLogDestinationProperty {}
    = AudioLogDestinationProperty {s3Bucket = newValue, ..}
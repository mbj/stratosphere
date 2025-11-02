module Stratosphere.Lex.BotAlias.AudioLogDestinationProperty (
        module Exports, AudioLogDestinationProperty(..),
        mkAudioLogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.S3BucketLogDestinationProperty as Exports
import Stratosphere.ResourceProperties
data AudioLogDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-audiologdestination.html>
    AudioLogDestinationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-audiologdestination.html#cfn-lex-botalias-audiologdestination-s3bucket>
                                 s3Bucket :: S3BucketLogDestinationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioLogDestinationProperty ::
  S3BucketLogDestinationProperty -> AudioLogDestinationProperty
mkAudioLogDestinationProperty s3Bucket
  = AudioLogDestinationProperty
      {haddock_workaround_ = (), s3Bucket = s3Bucket}
instance ToResourceProperties AudioLogDestinationProperty where
  toResourceProperties AudioLogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.AudioLogDestination",
         supportsTags = Prelude.False,
         properties = ["S3Bucket" JSON..= s3Bucket]}
instance JSON.ToJSON AudioLogDestinationProperty where
  toJSON AudioLogDestinationProperty {..}
    = JSON.object ["S3Bucket" JSON..= s3Bucket]
instance Property "S3Bucket" AudioLogDestinationProperty where
  type PropertyType "S3Bucket" AudioLogDestinationProperty = S3BucketLogDestinationProperty
  set newValue AudioLogDestinationProperty {..}
    = AudioLogDestinationProperty {s3Bucket = newValue, ..}
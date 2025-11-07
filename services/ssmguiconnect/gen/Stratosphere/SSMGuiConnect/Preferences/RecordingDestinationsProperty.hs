module Stratosphere.SSMGuiConnect.Preferences.RecordingDestinationsProperty (
        module Exports, RecordingDestinationsProperty(..),
        mkRecordingDestinationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSMGuiConnect.Preferences.S3BucketProperty as Exports
import Stratosphere.ResourceProperties
data RecordingDestinationsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-recordingdestinations.html>
    RecordingDestinationsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-recordingdestinations.html#cfn-ssmguiconnect-preferences-recordingdestinations-s3buckets>
                                   s3Buckets :: [S3BucketProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRecordingDestinationsProperty ::
  [S3BucketProperty] -> RecordingDestinationsProperty
mkRecordingDestinationsProperty s3Buckets
  = RecordingDestinationsProperty
      {haddock_workaround_ = (), s3Buckets = s3Buckets}
instance ToResourceProperties RecordingDestinationsProperty where
  toResourceProperties RecordingDestinationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMGuiConnect::Preferences.RecordingDestinations",
         supportsTags = Prelude.False,
         properties = ["S3Buckets" JSON..= s3Buckets]}
instance JSON.ToJSON RecordingDestinationsProperty where
  toJSON RecordingDestinationsProperty {..}
    = JSON.object ["S3Buckets" JSON..= s3Buckets]
instance Property "S3Buckets" RecordingDestinationsProperty where
  type PropertyType "S3Buckets" RecordingDestinationsProperty = [S3BucketProperty]
  set newValue RecordingDestinationsProperty {..}
    = RecordingDestinationsProperty {s3Buckets = newValue, ..}
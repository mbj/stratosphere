module Stratosphere.GroundStation.MissionProfile.StreamsKmsKeyProperty (
        StreamsKmsKeyProperty(..), mkStreamsKmsKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamsKmsKeyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-streamskmskey.html>
    StreamsKmsKeyProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-streamskmskey.html#cfn-groundstation-missionprofile-streamskmskey-kmsaliasarn>
                           kmsAliasArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-streamskmskey.html#cfn-groundstation-missionprofile-streamskmskey-kmsaliasname>
                           kmsAliasName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-missionprofile-streamskmskey.html#cfn-groundstation-missionprofile-streamskmskey-kmskeyarn>
                           kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamsKmsKeyProperty :: StreamsKmsKeyProperty
mkStreamsKmsKeyProperty
  = StreamsKmsKeyProperty
      {haddock_workaround_ = (), kmsAliasArn = Prelude.Nothing,
       kmsAliasName = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties StreamsKmsKeyProperty where
  toResourceProperties StreamsKmsKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::MissionProfile.StreamsKmsKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsAliasArn" Prelude.<$> kmsAliasArn,
                            (JSON..=) "KmsAliasName" Prelude.<$> kmsAliasName,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON StreamsKmsKeyProperty where
  toJSON StreamsKmsKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsAliasArn" Prelude.<$> kmsAliasArn,
               (JSON..=) "KmsAliasName" Prelude.<$> kmsAliasName,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "KmsAliasArn" StreamsKmsKeyProperty where
  type PropertyType "KmsAliasArn" StreamsKmsKeyProperty = Value Prelude.Text
  set newValue StreamsKmsKeyProperty {..}
    = StreamsKmsKeyProperty {kmsAliasArn = Prelude.pure newValue, ..}
instance Property "KmsAliasName" StreamsKmsKeyProperty where
  type PropertyType "KmsAliasName" StreamsKmsKeyProperty = Value Prelude.Text
  set newValue StreamsKmsKeyProperty {..}
    = StreamsKmsKeyProperty {kmsAliasName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" StreamsKmsKeyProperty where
  type PropertyType "KmsKeyArn" StreamsKmsKeyProperty = Value Prelude.Text
  set newValue StreamsKmsKeyProperty {..}
    = StreamsKmsKeyProperty {kmsKeyArn = Prelude.pure newValue, ..}
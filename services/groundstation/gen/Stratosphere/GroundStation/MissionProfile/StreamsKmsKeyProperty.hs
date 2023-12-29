module Stratosphere.GroundStation.MissionProfile.StreamsKmsKeyProperty (
        StreamsKmsKeyProperty(..), mkStreamsKmsKeyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamsKmsKeyProperty
  = StreamsKmsKeyProperty {kmsAliasArn :: (Prelude.Maybe (Value Prelude.Text)),
                           kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamsKmsKeyProperty :: StreamsKmsKeyProperty
mkStreamsKmsKeyProperty
  = StreamsKmsKeyProperty
      {kmsAliasArn = Prelude.Nothing, kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties StreamsKmsKeyProperty where
  toResourceProperties StreamsKmsKeyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::MissionProfile.StreamsKmsKey",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsAliasArn" Prelude.<$> kmsAliasArn,
                            (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON StreamsKmsKeyProperty where
  toJSON StreamsKmsKeyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsAliasArn" Prelude.<$> kmsAliasArn,
               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "KmsAliasArn" StreamsKmsKeyProperty where
  type PropertyType "KmsAliasArn" StreamsKmsKeyProperty = Value Prelude.Text
  set newValue StreamsKmsKeyProperty {..}
    = StreamsKmsKeyProperty {kmsAliasArn = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" StreamsKmsKeyProperty where
  type PropertyType "KmsKeyArn" StreamsKmsKeyProperty = Value Prelude.Text
  set newValue StreamsKmsKeyProperty {..}
    = StreamsKmsKeyProperty {kmsKeyArn = Prelude.pure newValue, ..}
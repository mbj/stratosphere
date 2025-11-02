module Stratosphere.IVS.IngestConfiguration (
        IngestConfiguration(..), mkIngestConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IngestConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html>
    IngestConfiguration {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-ingestprotocol>
                         ingestProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-insecureingest>
                         insecureIngest :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-name>
                         name :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-stagearn>
                         stageArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-tags>
                         tags :: (Prelude.Maybe [Tag]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-ingestconfiguration.html#cfn-ivs-ingestconfiguration-userid>
                         userId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngestConfiguration :: IngestConfiguration
mkIngestConfiguration
  = IngestConfiguration
      {haddock_workaround_ = (), ingestProtocol = Prelude.Nothing,
       insecureIngest = Prelude.Nothing, name = Prelude.Nothing,
       stageArn = Prelude.Nothing, tags = Prelude.Nothing,
       userId = Prelude.Nothing}
instance ToResourceProperties IngestConfiguration where
  toResourceProperties IngestConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IVS::IngestConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IngestProtocol" Prelude.<$> ingestProtocol,
                            (JSON..=) "InsecureIngest" Prelude.<$> insecureIngest,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "StageArn" Prelude.<$> stageArn,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "UserId" Prelude.<$> userId])}
instance JSON.ToJSON IngestConfiguration where
  toJSON IngestConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IngestProtocol" Prelude.<$> ingestProtocol,
               (JSON..=) "InsecureIngest" Prelude.<$> insecureIngest,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "StageArn" Prelude.<$> stageArn,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UserId" Prelude.<$> userId]))
instance Property "IngestProtocol" IngestConfiguration where
  type PropertyType "IngestProtocol" IngestConfiguration = Value Prelude.Text
  set newValue IngestConfiguration {..}
    = IngestConfiguration {ingestProtocol = Prelude.pure newValue, ..}
instance Property "InsecureIngest" IngestConfiguration where
  type PropertyType "InsecureIngest" IngestConfiguration = Value Prelude.Bool
  set newValue IngestConfiguration {..}
    = IngestConfiguration {insecureIngest = Prelude.pure newValue, ..}
instance Property "Name" IngestConfiguration where
  type PropertyType "Name" IngestConfiguration = Value Prelude.Text
  set newValue IngestConfiguration {..}
    = IngestConfiguration {name = Prelude.pure newValue, ..}
instance Property "StageArn" IngestConfiguration where
  type PropertyType "StageArn" IngestConfiguration = Value Prelude.Text
  set newValue IngestConfiguration {..}
    = IngestConfiguration {stageArn = Prelude.pure newValue, ..}
instance Property "Tags" IngestConfiguration where
  type PropertyType "Tags" IngestConfiguration = [Tag]
  set newValue IngestConfiguration {..}
    = IngestConfiguration {tags = Prelude.pure newValue, ..}
instance Property "UserId" IngestConfiguration where
  type PropertyType "UserId" IngestConfiguration = Value Prelude.Text
  set newValue IngestConfiguration {..}
    = IngestConfiguration {userId = Prelude.pure newValue, ..}
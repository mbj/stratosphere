module Stratosphere.OpenSearchService.Domain.EBSOptionsProperty (
        EBSOptionsProperty(..), mkEBSOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EBSOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html>
    EBSOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html#cfn-opensearchservice-domain-ebsoptions-ebsenabled>
                        eBSEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html#cfn-opensearchservice-domain-ebsoptions-iops>
                        iops :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html#cfn-opensearchservice-domain-ebsoptions-throughput>
                        throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html#cfn-opensearchservice-domain-ebsoptions-volumesize>
                        volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-ebsoptions.html#cfn-opensearchservice-domain-ebsoptions-volumetype>
                        volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEBSOptionsProperty :: EBSOptionsProperty
mkEBSOptionsProperty
  = EBSOptionsProperty
      {haddock_workaround_ = (), eBSEnabled = Prelude.Nothing,
       iops = Prelude.Nothing, throughput = Prelude.Nothing,
       volumeSize = Prelude.Nothing, volumeType = Prelude.Nothing}
instance ToResourceProperties EBSOptionsProperty where
  toResourceProperties EBSOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.EBSOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EBSEnabled" Prelude.<$> eBSEnabled,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "Throughput" Prelude.<$> throughput,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON EBSOptionsProperty where
  toJSON EBSOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EBSEnabled" Prelude.<$> eBSEnabled,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "Throughput" Prelude.<$> throughput,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "EBSEnabled" EBSOptionsProperty where
  type PropertyType "EBSEnabled" EBSOptionsProperty = Value Prelude.Bool
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {eBSEnabled = Prelude.pure newValue, ..}
instance Property "Iops" EBSOptionsProperty where
  type PropertyType "Iops" EBSOptionsProperty = Value Prelude.Integer
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {iops = Prelude.pure newValue, ..}
instance Property "Throughput" EBSOptionsProperty where
  type PropertyType "Throughput" EBSOptionsProperty = Value Prelude.Integer
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {throughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" EBSOptionsProperty where
  type PropertyType "VolumeSize" EBSOptionsProperty = Value Prelude.Integer
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EBSOptionsProperty where
  type PropertyType "VolumeType" EBSOptionsProperty = Value Prelude.Text
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {volumeType = Prelude.pure newValue, ..}
module Stratosphere.Elasticsearch.Domain.EBSOptionsProperty (
        EBSOptionsProperty(..), mkEBSOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EBSOptionsProperty
  = EBSOptionsProperty {eBSEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                        iops :: (Prelude.Maybe (Value Prelude.Integer)),
                        volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                        volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEBSOptionsProperty :: EBSOptionsProperty
mkEBSOptionsProperty
  = EBSOptionsProperty
      {eBSEnabled = Prelude.Nothing, iops = Prelude.Nothing,
       volumeSize = Prelude.Nothing, volumeType = Prelude.Nothing}
instance ToResourceProperties EBSOptionsProperty where
  toResourceProperties EBSOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Elasticsearch::Domain.EBSOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EBSEnabled" Prelude.<$> eBSEnabled,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON EBSOptionsProperty where
  toJSON EBSOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EBSEnabled" Prelude.<$> eBSEnabled,
               (JSON..=) "Iops" Prelude.<$> iops,
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
instance Property "VolumeSize" EBSOptionsProperty where
  type PropertyType "VolumeSize" EBSOptionsProperty = Value Prelude.Integer
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EBSOptionsProperty where
  type PropertyType "VolumeType" EBSOptionsProperty = Value Prelude.Text
  set newValue EBSOptionsProperty {..}
    = EBSOptionsProperty {volumeType = Prelude.pure newValue, ..}
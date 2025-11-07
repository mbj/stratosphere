module Stratosphere.Glue.TableOptimizer.IcebergRetentionConfigurationProperty (
        IcebergRetentionConfigurationProperty(..),
        mkIcebergRetentionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcebergRetentionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-icebergretentionconfiguration.html>
    IcebergRetentionConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-icebergretentionconfiguration.html#cfn-glue-tableoptimizer-icebergretentionconfiguration-cleanexpiredfiles>
                                           cleanExpiredFiles :: (Prelude.Maybe (Value Prelude.Bool)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-icebergretentionconfiguration.html#cfn-glue-tableoptimizer-icebergretentionconfiguration-numberofsnapshotstoretain>
                                           numberOfSnapshotsToRetain :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-icebergretentionconfiguration.html#cfn-glue-tableoptimizer-icebergretentionconfiguration-snapshotretentionperiodindays>
                                           snapshotRetentionPeriodInDays :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergRetentionConfigurationProperty ::
  IcebergRetentionConfigurationProperty
mkIcebergRetentionConfigurationProperty
  = IcebergRetentionConfigurationProperty
      {haddock_workaround_ = (), cleanExpiredFiles = Prelude.Nothing,
       numberOfSnapshotsToRetain = Prelude.Nothing,
       snapshotRetentionPeriodInDays = Prelude.Nothing}
instance ToResourceProperties IcebergRetentionConfigurationProperty where
  toResourceProperties IcebergRetentionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.IcebergRetentionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CleanExpiredFiles" Prelude.<$> cleanExpiredFiles,
                            (JSON..=) "NumberOfSnapshotsToRetain"
                              Prelude.<$> numberOfSnapshotsToRetain,
                            (JSON..=) "SnapshotRetentionPeriodInDays"
                              Prelude.<$> snapshotRetentionPeriodInDays])}
instance JSON.ToJSON IcebergRetentionConfigurationProperty where
  toJSON IcebergRetentionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CleanExpiredFiles" Prelude.<$> cleanExpiredFiles,
               (JSON..=) "NumberOfSnapshotsToRetain"
                 Prelude.<$> numberOfSnapshotsToRetain,
               (JSON..=) "SnapshotRetentionPeriodInDays"
                 Prelude.<$> snapshotRetentionPeriodInDays]))
instance Property "CleanExpiredFiles" IcebergRetentionConfigurationProperty where
  type PropertyType "CleanExpiredFiles" IcebergRetentionConfigurationProperty = Value Prelude.Bool
  set newValue IcebergRetentionConfigurationProperty {..}
    = IcebergRetentionConfigurationProperty
        {cleanExpiredFiles = Prelude.pure newValue, ..}
instance Property "NumberOfSnapshotsToRetain" IcebergRetentionConfigurationProperty where
  type PropertyType "NumberOfSnapshotsToRetain" IcebergRetentionConfigurationProperty = Value Prelude.Integer
  set newValue IcebergRetentionConfigurationProperty {..}
    = IcebergRetentionConfigurationProperty
        {numberOfSnapshotsToRetain = Prelude.pure newValue, ..}
instance Property "SnapshotRetentionPeriodInDays" IcebergRetentionConfigurationProperty where
  type PropertyType "SnapshotRetentionPeriodInDays" IcebergRetentionConfigurationProperty = Value Prelude.Integer
  set newValue IcebergRetentionConfigurationProperty {..}
    = IcebergRetentionConfigurationProperty
        {snapshotRetentionPeriodInDays = Prelude.pure newValue, ..}
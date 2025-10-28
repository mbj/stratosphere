module Stratosphere.RedshiftServerless.Namespace.SnapshotCopyConfigurationProperty (
        SnapshotCopyConfigurationProperty(..),
        mkSnapshotCopyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapshotCopyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-snapshotcopyconfiguration.html>
    SnapshotCopyConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-snapshotcopyconfiguration.html#cfn-redshiftserverless-namespace-snapshotcopyconfiguration-destinationkmskeyid>
                                       destinationKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-snapshotcopyconfiguration.html#cfn-redshiftserverless-namespace-snapshotcopyconfiguration-destinationregion>
                                       destinationRegion :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshiftserverless-namespace-snapshotcopyconfiguration.html#cfn-redshiftserverless-namespace-snapshotcopyconfiguration-snapshotretentionperiod>
                                       snapshotRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnapshotCopyConfigurationProperty ::
  Value Prelude.Text -> SnapshotCopyConfigurationProperty
mkSnapshotCopyConfigurationProperty destinationRegion
  = SnapshotCopyConfigurationProperty
      {haddock_workaround_ = (), destinationRegion = destinationRegion,
       destinationKmsKeyId = Prelude.Nothing,
       snapshotRetentionPeriod = Prelude.Nothing}
instance ToResourceProperties SnapshotCopyConfigurationProperty where
  toResourceProperties SnapshotCopyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::RedshiftServerless::Namespace.SnapshotCopyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationRegion" JSON..= destinationRegion]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationKmsKeyId" Prelude.<$> destinationKmsKeyId,
                               (JSON..=) "SnapshotRetentionPeriod"
                                 Prelude.<$> snapshotRetentionPeriod]))}
instance JSON.ToJSON SnapshotCopyConfigurationProperty where
  toJSON SnapshotCopyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationRegion" JSON..= destinationRegion]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationKmsKeyId" Prelude.<$> destinationKmsKeyId,
                  (JSON..=) "SnapshotRetentionPeriod"
                    Prelude.<$> snapshotRetentionPeriod])))
instance Property "DestinationKmsKeyId" SnapshotCopyConfigurationProperty where
  type PropertyType "DestinationKmsKeyId" SnapshotCopyConfigurationProperty = Value Prelude.Text
  set newValue SnapshotCopyConfigurationProperty {..}
    = SnapshotCopyConfigurationProperty
        {destinationKmsKeyId = Prelude.pure newValue, ..}
instance Property "DestinationRegion" SnapshotCopyConfigurationProperty where
  type PropertyType "DestinationRegion" SnapshotCopyConfigurationProperty = Value Prelude.Text
  set newValue SnapshotCopyConfigurationProperty {..}
    = SnapshotCopyConfigurationProperty
        {destinationRegion = newValue, ..}
instance Property "SnapshotRetentionPeriod" SnapshotCopyConfigurationProperty where
  type PropertyType "SnapshotRetentionPeriod" SnapshotCopyConfigurationProperty = Value Prelude.Integer
  set newValue SnapshotCopyConfigurationProperty {..}
    = SnapshotCopyConfigurationProperty
        {snapshotRetentionPeriod = Prelude.pure newValue, ..}
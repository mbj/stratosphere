module Stratosphere.FSx.FileSystem.MetadataConfigurationProperty (
        MetadataConfigurationProperty(..), mkMetadataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-metadataconfiguration.html>
    MetadataConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-metadataconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-metadataconfiguration-iops>
                                   iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-metadataconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-metadataconfiguration-mode>
                                   mode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataConfigurationProperty :: MetadataConfigurationProperty
mkMetadataConfigurationProperty
  = MetadataConfigurationProperty
      {haddock_workaround_ = (), iops = Prelude.Nothing,
       mode = Prelude.Nothing}
instance ToResourceProperties MetadataConfigurationProperty where
  toResourceProperties MetadataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.MetadataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "Mode" Prelude.<$> mode])}
instance JSON.ToJSON MetadataConfigurationProperty where
  toJSON MetadataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "Mode" Prelude.<$> mode]))
instance Property "Iops" MetadataConfigurationProperty where
  type PropertyType "Iops" MetadataConfigurationProperty = Value Prelude.Integer
  set newValue MetadataConfigurationProperty {..}
    = MetadataConfigurationProperty {iops = Prelude.pure newValue, ..}
instance Property "Mode" MetadataConfigurationProperty where
  type PropertyType "Mode" MetadataConfigurationProperty = Value Prelude.Text
  set newValue MetadataConfigurationProperty {..}
    = MetadataConfigurationProperty {mode = Prelude.pure newValue, ..}
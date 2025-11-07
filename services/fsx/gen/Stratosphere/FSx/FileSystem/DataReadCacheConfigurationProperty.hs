module Stratosphere.FSx.FileSystem.DataReadCacheConfigurationProperty (
        DataReadCacheConfigurationProperty(..),
        mkDataReadCacheConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataReadCacheConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration.html>
    DataReadCacheConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration-sizegib>
                                        sizeGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-datareadcacheconfiguration-sizingmode>
                                        sizingMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataReadCacheConfigurationProperty ::
  DataReadCacheConfigurationProperty
mkDataReadCacheConfigurationProperty
  = DataReadCacheConfigurationProperty
      {haddock_workaround_ = (), sizeGiB = Prelude.Nothing,
       sizingMode = Prelude.Nothing}
instance ToResourceProperties DataReadCacheConfigurationProperty where
  toResourceProperties DataReadCacheConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.DataReadCacheConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
                            (JSON..=) "SizingMode" Prelude.<$> sizingMode])}
instance JSON.ToJSON DataReadCacheConfigurationProperty where
  toJSON DataReadCacheConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
               (JSON..=) "SizingMode" Prelude.<$> sizingMode]))
instance Property "SizeGiB" DataReadCacheConfigurationProperty where
  type PropertyType "SizeGiB" DataReadCacheConfigurationProperty = Value Prelude.Integer
  set newValue DataReadCacheConfigurationProperty {..}
    = DataReadCacheConfigurationProperty
        {sizeGiB = Prelude.pure newValue, ..}
instance Property "SizingMode" DataReadCacheConfigurationProperty where
  type PropertyType "SizingMode" DataReadCacheConfigurationProperty = Value Prelude.Text
  set newValue DataReadCacheConfigurationProperty {..}
    = DataReadCacheConfigurationProperty
        {sizingMode = Prelude.pure newValue, ..}
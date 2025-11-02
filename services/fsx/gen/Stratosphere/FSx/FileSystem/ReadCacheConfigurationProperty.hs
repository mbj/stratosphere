module Stratosphere.FSx.FileSystem.ReadCacheConfigurationProperty (
        ReadCacheConfigurationProperty(..),
        mkReadCacheConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadCacheConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-readcacheconfiguration.html>
    ReadCacheConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-readcacheconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-readcacheconfiguration-sizegib>
                                    sizeGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-openzfsconfiguration-readcacheconfiguration.html#cfn-fsx-filesystem-openzfsconfiguration-readcacheconfiguration-sizingmode>
                                    sizingMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadCacheConfigurationProperty :: ReadCacheConfigurationProperty
mkReadCacheConfigurationProperty
  = ReadCacheConfigurationProperty
      {haddock_workaround_ = (), sizeGiB = Prelude.Nothing,
       sizingMode = Prelude.Nothing}
instance ToResourceProperties ReadCacheConfigurationProperty where
  toResourceProperties ReadCacheConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::FileSystem.ReadCacheConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
                            (JSON..=) "SizingMode" Prelude.<$> sizingMode])}
instance JSON.ToJSON ReadCacheConfigurationProperty where
  toJSON ReadCacheConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
               (JSON..=) "SizingMode" Prelude.<$> sizingMode]))
instance Property "SizeGiB" ReadCacheConfigurationProperty where
  type PropertyType "SizeGiB" ReadCacheConfigurationProperty = Value Prelude.Integer
  set newValue ReadCacheConfigurationProperty {..}
    = ReadCacheConfigurationProperty
        {sizeGiB = Prelude.pure newValue, ..}
instance Property "SizingMode" ReadCacheConfigurationProperty where
  type PropertyType "SizingMode" ReadCacheConfigurationProperty = Value Prelude.Text
  set newValue ReadCacheConfigurationProperty {..}
    = ReadCacheConfigurationProperty
        {sizingMode = Prelude.pure newValue, ..}
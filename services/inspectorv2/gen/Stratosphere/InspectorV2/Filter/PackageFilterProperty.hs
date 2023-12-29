module Stratosphere.InspectorV2.Filter.PackageFilterProperty (
        module Exports, PackageFilterProperty(..), mkPackageFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.NumberFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.Filter.StringFilterProperty as Exports
import Stratosphere.ResourceProperties
data PackageFilterProperty
  = PackageFilterProperty {architecture :: (Prelude.Maybe StringFilterProperty),
                           epoch :: (Prelude.Maybe NumberFilterProperty),
                           name :: (Prelude.Maybe StringFilterProperty),
                           release :: (Prelude.Maybe StringFilterProperty),
                           sourceLayerHash :: (Prelude.Maybe StringFilterProperty),
                           version :: (Prelude.Maybe StringFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackageFilterProperty :: PackageFilterProperty
mkPackageFilterProperty
  = PackageFilterProperty
      {architecture = Prelude.Nothing, epoch = Prelude.Nothing,
       name = Prelude.Nothing, release = Prelude.Nothing,
       sourceLayerHash = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties PackageFilterProperty where
  toResourceProperties PackageFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.PackageFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Architecture" Prelude.<$> architecture,
                            (JSON..=) "Epoch" Prelude.<$> epoch,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Release" Prelude.<$> release,
                            (JSON..=) "SourceLayerHash" Prelude.<$> sourceLayerHash,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON PackageFilterProperty where
  toJSON PackageFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Architecture" Prelude.<$> architecture,
               (JSON..=) "Epoch" Prelude.<$> epoch,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Release" Prelude.<$> release,
               (JSON..=) "SourceLayerHash" Prelude.<$> sourceLayerHash,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "Architecture" PackageFilterProperty where
  type PropertyType "Architecture" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {architecture = Prelude.pure newValue, ..}
instance Property "Epoch" PackageFilterProperty where
  type PropertyType "Epoch" PackageFilterProperty = NumberFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {epoch = Prelude.pure newValue, ..}
instance Property "Name" PackageFilterProperty where
  type PropertyType "Name" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {name = Prelude.pure newValue, ..}
instance Property "Release" PackageFilterProperty where
  type PropertyType "Release" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {release = Prelude.pure newValue, ..}
instance Property "SourceLayerHash" PackageFilterProperty where
  type PropertyType "SourceLayerHash" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty
        {sourceLayerHash = Prelude.pure newValue, ..}
instance Property "Version" PackageFilterProperty where
  type PropertyType "Version" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {version = Prelude.pure newValue, ..}
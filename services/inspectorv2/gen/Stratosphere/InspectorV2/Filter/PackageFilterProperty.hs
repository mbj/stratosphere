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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html>
    PackageFilterProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-architecture>
                           architecture :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-epoch>
                           epoch :: (Prelude.Maybe NumberFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-filepath>
                           filePath :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-name>
                           name :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-release>
                           release :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-sourcelambdalayerarn>
                           sourceLambdaLayerArn :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-sourcelayerhash>
                           sourceLayerHash :: (Prelude.Maybe StringFilterProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-packagefilter.html#cfn-inspectorv2-filter-packagefilter-version>
                           version :: (Prelude.Maybe StringFilterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackageFilterProperty :: PackageFilterProperty
mkPackageFilterProperty
  = PackageFilterProperty
      {haddock_workaround_ = (), architecture = Prelude.Nothing,
       epoch = Prelude.Nothing, filePath = Prelude.Nothing,
       name = Prelude.Nothing, release = Prelude.Nothing,
       sourceLambdaLayerArn = Prelude.Nothing,
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
                            (JSON..=) "FilePath" Prelude.<$> filePath,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Release" Prelude.<$> release,
                            (JSON..=) "SourceLambdaLayerArn" Prelude.<$> sourceLambdaLayerArn,
                            (JSON..=) "SourceLayerHash" Prelude.<$> sourceLayerHash,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON PackageFilterProperty where
  toJSON PackageFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Architecture" Prelude.<$> architecture,
               (JSON..=) "Epoch" Prelude.<$> epoch,
               (JSON..=) "FilePath" Prelude.<$> filePath,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Release" Prelude.<$> release,
               (JSON..=) "SourceLambdaLayerArn" Prelude.<$> sourceLambdaLayerArn,
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
instance Property "FilePath" PackageFilterProperty where
  type PropertyType "FilePath" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {filePath = Prelude.pure newValue, ..}
instance Property "Name" PackageFilterProperty where
  type PropertyType "Name" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {name = Prelude.pure newValue, ..}
instance Property "Release" PackageFilterProperty where
  type PropertyType "Release" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {release = Prelude.pure newValue, ..}
instance Property "SourceLambdaLayerArn" PackageFilterProperty where
  type PropertyType "SourceLambdaLayerArn" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty
        {sourceLambdaLayerArn = Prelude.pure newValue, ..}
instance Property "SourceLayerHash" PackageFilterProperty where
  type PropertyType "SourceLayerHash" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty
        {sourceLayerHash = Prelude.pure newValue, ..}
instance Property "Version" PackageFilterProperty where
  type PropertyType "Version" PackageFilterProperty = StringFilterProperty
  set newValue PackageFilterProperty {..}
    = PackageFilterProperty {version = Prelude.pure newValue, ..}
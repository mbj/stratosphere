module Stratosphere.S3.MultiRegionAccessPoint (
        module Exports, MultiRegionAccessPoint(..),
        mkMultiRegionAccessPoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.MultiRegionAccessPoint.PublicAccessBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.MultiRegionAccessPoint.RegionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiRegionAccessPoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspoint.html>
    MultiRegionAccessPoint {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspoint.html#cfn-s3-multiregionaccesspoint-name>
                            name :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspoint.html#cfn-s3-multiregionaccesspoint-publicaccessblockconfiguration>
                            publicAccessBlockConfiguration :: (Prelude.Maybe PublicAccessBlockConfigurationProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-s3-multiregionaccesspoint.html#cfn-s3-multiregionaccesspoint-regions>
                            regions :: [RegionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiRegionAccessPoint ::
  [RegionProperty] -> MultiRegionAccessPoint
mkMultiRegionAccessPoint regions
  = MultiRegionAccessPoint
      {haddock_workaround_ = (), regions = regions,
       name = Prelude.Nothing,
       publicAccessBlockConfiguration = Prelude.Nothing}
instance ToResourceProperties MultiRegionAccessPoint where
  toResourceProperties MultiRegionAccessPoint {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Regions" JSON..= regions]
                           (Prelude.catMaybes
                              [(JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "PublicAccessBlockConfiguration"
                                 Prelude.<$> publicAccessBlockConfiguration]))}
instance JSON.ToJSON MultiRegionAccessPoint where
  toJSON MultiRegionAccessPoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Regions" JSON..= regions]
              (Prelude.catMaybes
                 [(JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "PublicAccessBlockConfiguration"
                    Prelude.<$> publicAccessBlockConfiguration])))
instance Property "Name" MultiRegionAccessPoint where
  type PropertyType "Name" MultiRegionAccessPoint = Value Prelude.Text
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint {name = Prelude.pure newValue, ..}
instance Property "PublicAccessBlockConfiguration" MultiRegionAccessPoint where
  type PropertyType "PublicAccessBlockConfiguration" MultiRegionAccessPoint = PublicAccessBlockConfigurationProperty
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint
        {publicAccessBlockConfiguration = Prelude.pure newValue, ..}
instance Property "Regions" MultiRegionAccessPoint where
  type PropertyType "Regions" MultiRegionAccessPoint = [RegionProperty]
  set newValue MultiRegionAccessPoint {..}
    = MultiRegionAccessPoint {regions = newValue, ..}
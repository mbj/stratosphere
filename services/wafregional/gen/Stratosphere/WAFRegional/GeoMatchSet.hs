module Stratosphere.WAFRegional.GeoMatchSet (
        module Exports, GeoMatchSet(..), mkGeoMatchSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.GeoMatchSet.GeoMatchConstraintProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GeoMatchSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html>
    GeoMatchSet {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-geomatchconstraints>
                 geoMatchConstraints :: (Prelude.Maybe [GeoMatchConstraintProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-geomatchset.html#cfn-wafregional-geomatchset-name>
                 name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGeoMatchSet :: Value Prelude.Text -> GeoMatchSet
mkGeoMatchSet name
  = GeoMatchSet
      {haddock_workaround_ = (), name = name,
       geoMatchConstraints = Prelude.Nothing}
instance ToResourceProperties GeoMatchSet where
  toResourceProperties GeoMatchSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::GeoMatchSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "GeoMatchConstraints"
                                 Prelude.<$> geoMatchConstraints]))}
instance JSON.ToJSON GeoMatchSet where
  toJSON GeoMatchSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "GeoMatchConstraints"
                    Prelude.<$> geoMatchConstraints])))
instance Property "GeoMatchConstraints" GeoMatchSet where
  type PropertyType "GeoMatchConstraints" GeoMatchSet = [GeoMatchConstraintProperty]
  set newValue GeoMatchSet {..}
    = GeoMatchSet {geoMatchConstraints = Prelude.pure newValue, ..}
instance Property "Name" GeoMatchSet where
  type PropertyType "Name" GeoMatchSet = Value Prelude.Text
  set newValue GeoMatchSet {..} = GeoMatchSet {name = newValue, ..}
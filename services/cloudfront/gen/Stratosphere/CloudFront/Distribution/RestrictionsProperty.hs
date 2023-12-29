module Stratosphere.CloudFront.Distribution.RestrictionsProperty (
        module Exports, RestrictionsProperty(..), mkRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.GeoRestrictionProperty as Exports
import Stratosphere.ResourceProperties
data RestrictionsProperty
  = RestrictionsProperty {geoRestriction :: GeoRestrictionProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestrictionsProperty ::
  GeoRestrictionProperty -> RestrictionsProperty
mkRestrictionsProperty geoRestriction
  = RestrictionsProperty {geoRestriction = geoRestriction}
instance ToResourceProperties RestrictionsProperty where
  toResourceProperties RestrictionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Restrictions",
         supportsTags = Prelude.False,
         properties = ["GeoRestriction" JSON..= geoRestriction]}
instance JSON.ToJSON RestrictionsProperty where
  toJSON RestrictionsProperty {..}
    = JSON.object ["GeoRestriction" JSON..= geoRestriction]
instance Property "GeoRestriction" RestrictionsProperty where
  type PropertyType "GeoRestriction" RestrictionsProperty = GeoRestrictionProperty
  set newValue RestrictionsProperty {}
    = RestrictionsProperty {geoRestriction = newValue, ..}
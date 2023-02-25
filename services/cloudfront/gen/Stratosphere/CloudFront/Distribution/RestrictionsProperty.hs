module Stratosphere.CloudFront.Distribution.RestrictionsProperty (
        module Exports, RestrictionsProperty(..), mkRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFront.Distribution.GeoRestrictionProperty as Exports
import Stratosphere.ResourceProperties
data RestrictionsProperty
  = RestrictionsProperty {geoRestriction :: GeoRestrictionProperty}
mkRestrictionsProperty ::
  GeoRestrictionProperty -> RestrictionsProperty
mkRestrictionsProperty geoRestriction
  = RestrictionsProperty {geoRestriction = geoRestriction}
instance ToResourceProperties RestrictionsProperty where
  toResourceProperties RestrictionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Distribution.Restrictions",
         properties = ["GeoRestriction" JSON..= geoRestriction]}
instance JSON.ToJSON RestrictionsProperty where
  toJSON RestrictionsProperty {..}
    = JSON.object ["GeoRestriction" JSON..= geoRestriction]
instance Property "GeoRestriction" RestrictionsProperty where
  type PropertyType "GeoRestriction" RestrictionsProperty = GeoRestrictionProperty
  set newValue RestrictionsProperty {}
    = RestrictionsProperty {geoRestriction = newValue, ..}
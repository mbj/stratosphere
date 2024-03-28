module Stratosphere.B2BI.Capability.EdiTypeProperty (
        module Exports, EdiTypeProperty(..), mkEdiTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Capability.X12DetailsProperty as Exports
import Stratosphere.ResourceProperties
data EdiTypeProperty
  = EdiTypeProperty {x12Details :: X12DetailsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEdiTypeProperty :: X12DetailsProperty -> EdiTypeProperty
mkEdiTypeProperty x12Details
  = EdiTypeProperty {x12Details = x12Details}
instance ToResourceProperties EdiTypeProperty where
  toResourceProperties EdiTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Capability.EdiType",
         supportsTags = Prelude.False,
         properties = ["X12Details" JSON..= x12Details]}
instance JSON.ToJSON EdiTypeProperty where
  toJSON EdiTypeProperty {..}
    = JSON.object ["X12Details" JSON..= x12Details]
instance Property "X12Details" EdiTypeProperty where
  type PropertyType "X12Details" EdiTypeProperty = X12DetailsProperty
  set newValue EdiTypeProperty {}
    = EdiTypeProperty {x12Details = newValue, ..}
module Stratosphere.SES.ReceiptFilter.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptFilter.IpFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterProperty
  = FilterProperty {ipFilter :: IpFilterProperty,
                    name :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterProperty :: IpFilterProperty -> FilterProperty
mkFilterProperty ipFilter
  = FilterProperty {ipFilter = ipFilter, name = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter.Filter",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpFilter" JSON..= ipFilter]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpFilter" JSON..= ipFilter]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "IpFilter" FilterProperty where
  type PropertyType "IpFilter" FilterProperty = IpFilterProperty
  set newValue FilterProperty {..}
    = FilterProperty {ipFilter = newValue, ..}
instance Property "Name" FilterProperty where
  type PropertyType "Name" FilterProperty = Value Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {name = Prelude.pure newValue, ..}
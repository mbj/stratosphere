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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html>
    FilterProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-ipfilter>
                    ipFilter :: IpFilterProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-receiptfilter-filter.html#cfn-ses-receiptfilter-filter-name>
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: IpFilterProperty -> FilterProperty
mkFilterProperty ipFilter
  = FilterProperty
      {haddock_workaround_ = (), ipFilter = ipFilter,
       name = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter.Filter",
         supportsTags = Prelude.False,
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
module Stratosphere.SES.ReceiptFilter (
        module Exports, ReceiptFilter(..), mkReceiptFilter
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptFilter.FilterProperty as Exports
import Stratosphere.ResourceProperties
data ReceiptFilter
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html>
    ReceiptFilter {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-receiptfilter.html#cfn-ses-receiptfilter-filter>
                   filter :: FilterProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReceiptFilter :: FilterProperty -> ReceiptFilter
mkReceiptFilter filter
  = ReceiptFilter {haddock_workaround_ = (), filter = filter}
instance ToResourceProperties ReceiptFilter where
  toResourceProperties ReceiptFilter {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptFilter", supportsTags = Prelude.False,
         properties = ["Filter" JSON..= filter]}
instance JSON.ToJSON ReceiptFilter where
  toJSON ReceiptFilter {..} = JSON.object ["Filter" JSON..= filter]
instance Property "Filter" ReceiptFilter where
  type PropertyType "Filter" ReceiptFilter = FilterProperty
  set newValue ReceiptFilter {..}
    = ReceiptFilter {filter = newValue, ..}
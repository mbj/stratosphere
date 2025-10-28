module Stratosphere.OpenSearchService.Domain.OffPeakWindowOptionsProperty (
        module Exports, OffPeakWindowOptionsProperty(..),
        mkOffPeakWindowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.OffPeakWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OffPeakWindowOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-offpeakwindowoptions.html>
    OffPeakWindowOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-offpeakwindowoptions.html#cfn-opensearchservice-domain-offpeakwindowoptions-enabled>
                                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-offpeakwindowoptions.html#cfn-opensearchservice-domain-offpeakwindowoptions-offpeakwindow>
                                  offPeakWindow :: (Prelude.Maybe OffPeakWindowProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOffPeakWindowOptionsProperty :: OffPeakWindowOptionsProperty
mkOffPeakWindowOptionsProperty
  = OffPeakWindowOptionsProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing,
       offPeakWindow = Prelude.Nothing}
instance ToResourceProperties OffPeakWindowOptionsProperty where
  toResourceProperties OffPeakWindowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.OffPeakWindowOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "OffPeakWindow" Prelude.<$> offPeakWindow])}
instance JSON.ToJSON OffPeakWindowOptionsProperty where
  toJSON OffPeakWindowOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "OffPeakWindow" Prelude.<$> offPeakWindow]))
instance Property "Enabled" OffPeakWindowOptionsProperty where
  type PropertyType "Enabled" OffPeakWindowOptionsProperty = Value Prelude.Bool
  set newValue OffPeakWindowOptionsProperty {..}
    = OffPeakWindowOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "OffPeakWindow" OffPeakWindowOptionsProperty where
  type PropertyType "OffPeakWindow" OffPeakWindowOptionsProperty = OffPeakWindowProperty
  set newValue OffPeakWindowOptionsProperty {..}
    = OffPeakWindowOptionsProperty
        {offPeakWindow = Prelude.pure newValue, ..}
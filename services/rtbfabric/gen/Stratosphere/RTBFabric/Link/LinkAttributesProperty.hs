module Stratosphere.RTBFabric.Link.LinkAttributesProperty (
        module Exports, LinkAttributesProperty(..),
        mkLinkAttributesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RTBFabric.Link.ResponderErrorMaskingForHttpCodeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinkAttributesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkattributes.html>
    LinkAttributesProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkattributes.html#cfn-rtbfabric-link-linkattributes-customerprovidedid>
                            customerProvidedId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-linkattributes.html#cfn-rtbfabric-link-linkattributes-respondererrormasking>
                            responderErrorMasking :: (Prelude.Maybe [ResponderErrorMaskingForHttpCodeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLinkAttributesProperty :: LinkAttributesProperty
mkLinkAttributesProperty
  = LinkAttributesProperty
      {haddock_workaround_ = (), customerProvidedId = Prelude.Nothing,
       responderErrorMasking = Prelude.Nothing}
instance ToResourceProperties LinkAttributesProperty where
  toResourceProperties LinkAttributesProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.LinkAttributes",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerProvidedId" Prelude.<$> customerProvidedId,
                            (JSON..=) "ResponderErrorMasking"
                              Prelude.<$> responderErrorMasking])}
instance JSON.ToJSON LinkAttributesProperty where
  toJSON LinkAttributesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerProvidedId" Prelude.<$> customerProvidedId,
               (JSON..=) "ResponderErrorMasking"
                 Prelude.<$> responderErrorMasking]))
instance Property "CustomerProvidedId" LinkAttributesProperty where
  type PropertyType "CustomerProvidedId" LinkAttributesProperty = Value Prelude.Text
  set newValue LinkAttributesProperty {..}
    = LinkAttributesProperty
        {customerProvidedId = Prelude.pure newValue, ..}
instance Property "ResponderErrorMasking" LinkAttributesProperty where
  type PropertyType "ResponderErrorMasking" LinkAttributesProperty = [ResponderErrorMaskingForHttpCodeProperty]
  set newValue LinkAttributesProperty {..}
    = LinkAttributesProperty
        {responderErrorMasking = Prelude.pure newValue, ..}
module Stratosphere.B2BI.Transformer.AdvancedOptionsProperty (
        module Exports, AdvancedOptionsProperty(..),
        mkAdvancedOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12AdvancedOptionsProperty as Exports
import Stratosphere.ResourceProperties
data AdvancedOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-advancedoptions.html>
    AdvancedOptionsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-advancedoptions.html#cfn-b2bi-transformer-advancedoptions-x12>
                             x12 :: (Prelude.Maybe X12AdvancedOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedOptionsProperty :: AdvancedOptionsProperty
mkAdvancedOptionsProperty
  = AdvancedOptionsProperty
      {haddock_workaround_ = (), x12 = Prelude.Nothing}
instance ToResourceProperties AdvancedOptionsProperty where
  toResourceProperties AdvancedOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.AdvancedOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "X12" Prelude.<$> x12])}
instance JSON.ToJSON AdvancedOptionsProperty where
  toJSON AdvancedOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "X12" Prelude.<$> x12]))
instance Property "X12" AdvancedOptionsProperty where
  type PropertyType "X12" AdvancedOptionsProperty = X12AdvancedOptionsProperty
  set newValue AdvancedOptionsProperty {..}
    = AdvancedOptionsProperty {x12 = Prelude.pure newValue, ..}
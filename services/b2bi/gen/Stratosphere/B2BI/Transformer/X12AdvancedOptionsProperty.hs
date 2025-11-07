module Stratosphere.B2BI.Transformer.X12AdvancedOptionsProperty (
        module Exports, X12AdvancedOptionsProperty(..),
        mkX12AdvancedOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12SplitOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12ValidationOptionsProperty as Exports
import Stratosphere.ResourceProperties
data X12AdvancedOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html>
    X12AdvancedOptionsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html#cfn-b2bi-transformer-x12advancedoptions-splitoptions>
                                splitOptions :: (Prelude.Maybe X12SplitOptionsProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12advancedoptions.html#cfn-b2bi-transformer-x12advancedoptions-validationoptions>
                                validationOptions :: (Prelude.Maybe X12ValidationOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12AdvancedOptionsProperty :: X12AdvancedOptionsProperty
mkX12AdvancedOptionsProperty
  = X12AdvancedOptionsProperty
      {haddock_workaround_ = (), splitOptions = Prelude.Nothing,
       validationOptions = Prelude.Nothing}
instance ToResourceProperties X12AdvancedOptionsProperty where
  toResourceProperties X12AdvancedOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12AdvancedOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SplitOptions" Prelude.<$> splitOptions,
                            (JSON..=) "ValidationOptions" Prelude.<$> validationOptions])}
instance JSON.ToJSON X12AdvancedOptionsProperty where
  toJSON X12AdvancedOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SplitOptions" Prelude.<$> splitOptions,
               (JSON..=) "ValidationOptions" Prelude.<$> validationOptions]))
instance Property "SplitOptions" X12AdvancedOptionsProperty where
  type PropertyType "SplitOptions" X12AdvancedOptionsProperty = X12SplitOptionsProperty
  set newValue X12AdvancedOptionsProperty {..}
    = X12AdvancedOptionsProperty
        {splitOptions = Prelude.pure newValue, ..}
instance Property "ValidationOptions" X12AdvancedOptionsProperty where
  type PropertyType "ValidationOptions" X12AdvancedOptionsProperty = X12ValidationOptionsProperty
  set newValue X12AdvancedOptionsProperty {..}
    = X12AdvancedOptionsProperty
        {validationOptions = Prelude.pure newValue, ..}
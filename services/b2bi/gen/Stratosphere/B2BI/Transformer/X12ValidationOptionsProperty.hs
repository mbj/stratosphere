module Stratosphere.B2BI.Transformer.X12ValidationOptionsProperty (
        module Exports, X12ValidationOptionsProperty(..),
        mkX12ValidationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.B2BI.Transformer.X12ValidationRuleProperty as Exports
import Stratosphere.ResourceProperties
data X12ValidationOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationoptions.html>
    X12ValidationOptionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-b2bi-transformer-x12validationoptions.html#cfn-b2bi-transformer-x12validationoptions-validationrules>
                                  validationRules :: (Prelude.Maybe [X12ValidationRuleProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkX12ValidationOptionsProperty :: X12ValidationOptionsProperty
mkX12ValidationOptionsProperty
  = X12ValidationOptionsProperty
      {haddock_workaround_ = (), validationRules = Prelude.Nothing}
instance ToResourceProperties X12ValidationOptionsProperty where
  toResourceProperties X12ValidationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::B2BI::Transformer.X12ValidationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ValidationRules" Prelude.<$> validationRules])}
instance JSON.ToJSON X12ValidationOptionsProperty where
  toJSON X12ValidationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ValidationRules" Prelude.<$> validationRules]))
instance Property "ValidationRules" X12ValidationOptionsProperty where
  type PropertyType "ValidationRules" X12ValidationOptionsProperty = [X12ValidationRuleProperty]
  set newValue X12ValidationOptionsProperty {..}
    = X12ValidationOptionsProperty
        {validationRules = Prelude.pure newValue, ..}
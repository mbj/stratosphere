module Stratosphere.AmplifyUIBuilder.Form.FormCTAProperty (
        module Exports, FormCTAProperty(..), mkFormCTAProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormButtonProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FormCTAProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formcta.html>
    FormCTAProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formcta.html#cfn-amplifyuibuilder-form-formcta-cancel>
                     cancel :: (Prelude.Maybe FormButtonProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formcta.html#cfn-amplifyuibuilder-form-formcta-clear>
                     clear :: (Prelude.Maybe FormButtonProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formcta.html#cfn-amplifyuibuilder-form-formcta-position>
                     position :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formcta.html#cfn-amplifyuibuilder-form-formcta-submit>
                     submit :: (Prelude.Maybe FormButtonProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormCTAProperty :: FormCTAProperty
mkFormCTAProperty
  = FormCTAProperty
      {haddock_workaround_ = (), cancel = Prelude.Nothing,
       clear = Prelude.Nothing, position = Prelude.Nothing,
       submit = Prelude.Nothing}
instance ToResourceProperties FormCTAProperty where
  toResourceProperties FormCTAProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormCTA",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cancel" Prelude.<$> cancel,
                            (JSON..=) "Clear" Prelude.<$> clear,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Submit" Prelude.<$> submit])}
instance JSON.ToJSON FormCTAProperty where
  toJSON FormCTAProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cancel" Prelude.<$> cancel,
               (JSON..=) "Clear" Prelude.<$> clear,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Submit" Prelude.<$> submit]))
instance Property "Cancel" FormCTAProperty where
  type PropertyType "Cancel" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {cancel = Prelude.pure newValue, ..}
instance Property "Clear" FormCTAProperty where
  type PropertyType "Clear" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {clear = Prelude.pure newValue, ..}
instance Property "Position" FormCTAProperty where
  type PropertyType "Position" FormCTAProperty = Value Prelude.Text
  set newValue FormCTAProperty {..}
    = FormCTAProperty {position = Prelude.pure newValue, ..}
instance Property "Submit" FormCTAProperty where
  type PropertyType "Submit" FormCTAProperty = FormButtonProperty
  set newValue FormCTAProperty {..}
    = FormCTAProperty {submit = Prelude.pure newValue, ..}
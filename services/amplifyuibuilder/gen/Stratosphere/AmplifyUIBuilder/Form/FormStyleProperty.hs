module Stratosphere.AmplifyUIBuilder.Form.FormStyleProperty (
        module Exports, FormStyleProperty(..), mkFormStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormStyleConfigProperty as Exports
import Stratosphere.ResourceProperties
data FormStyleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyle.html>
    FormStyleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyle.html#cfn-amplifyuibuilder-form-formstyle-horizontalgap>
                       horizontalGap :: (Prelude.Maybe FormStyleConfigProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyle.html#cfn-amplifyuibuilder-form-formstyle-outerpadding>
                       outerPadding :: (Prelude.Maybe FormStyleConfigProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-form-formstyle.html#cfn-amplifyuibuilder-form-formstyle-verticalgap>
                       verticalGap :: (Prelude.Maybe FormStyleConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormStyleProperty :: FormStyleProperty
mkFormStyleProperty
  = FormStyleProperty
      {haddock_workaround_ = (), horizontalGap = Prelude.Nothing,
       outerPadding = Prelude.Nothing, verticalGap = Prelude.Nothing}
instance ToResourceProperties FormStyleProperty where
  toResourceProperties FormStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormStyle",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HorizontalGap" Prelude.<$> horizontalGap,
                            (JSON..=) "OuterPadding" Prelude.<$> outerPadding,
                            (JSON..=) "VerticalGap" Prelude.<$> verticalGap])}
instance JSON.ToJSON FormStyleProperty where
  toJSON FormStyleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HorizontalGap" Prelude.<$> horizontalGap,
               (JSON..=) "OuterPadding" Prelude.<$> outerPadding,
               (JSON..=) "VerticalGap" Prelude.<$> verticalGap]))
instance Property "HorizontalGap" FormStyleProperty where
  type PropertyType "HorizontalGap" FormStyleProperty = FormStyleConfigProperty
  set newValue FormStyleProperty {..}
    = FormStyleProperty {horizontalGap = Prelude.pure newValue, ..}
instance Property "OuterPadding" FormStyleProperty where
  type PropertyType "OuterPadding" FormStyleProperty = FormStyleConfigProperty
  set newValue FormStyleProperty {..}
    = FormStyleProperty {outerPadding = Prelude.pure newValue, ..}
instance Property "VerticalGap" FormStyleProperty where
  type PropertyType "VerticalGap" FormStyleProperty = FormStyleConfigProperty
  set newValue FormStyleProperty {..}
    = FormStyleProperty {verticalGap = Prelude.pure newValue, ..}
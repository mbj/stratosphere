module Stratosphere.AmplifyUIBuilder.Form.FormStyleProperty (
        module Exports, FormStyleProperty(..), mkFormStyleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Form.FormStyleConfigProperty as Exports
import Stratosphere.ResourceProperties
data FormStyleProperty
  = FormStyleProperty {horizontalGap :: (Prelude.Maybe FormStyleConfigProperty),
                       outerPadding :: (Prelude.Maybe FormStyleConfigProperty),
                       verticalGap :: (Prelude.Maybe FormStyleConfigProperty)}
mkFormStyleProperty :: FormStyleProperty
mkFormStyleProperty
  = FormStyleProperty
      {horizontalGap = Prelude.Nothing, outerPadding = Prelude.Nothing,
       verticalGap = Prelude.Nothing}
instance ToResourceProperties FormStyleProperty where
  toResourceProperties FormStyleProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Form.FormStyle",
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
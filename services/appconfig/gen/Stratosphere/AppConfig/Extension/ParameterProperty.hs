module Stratosphere.AppConfig.Extension.ParameterProperty (
        ParameterProperty(..), mkParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-extension-parameter.html>
    ParameterProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-extension-parameter.html#cfn-appconfig-extension-parameter-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-extension-parameter.html#cfn-appconfig-extension-parameter-dynamic>
                       dynamic :: (Prelude.Maybe (Value Prelude.Bool)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-extension-parameter.html#cfn-appconfig-extension-parameter-required>
                       required :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterProperty :: Value Prelude.Bool -> ParameterProperty
mkParameterProperty required
  = ParameterProperty
      {haddock_workaround_ = (), required = required,
       description = Prelude.Nothing, dynamic = Prelude.Nothing}
instance ToResourceProperties ParameterProperty where
  toResourceProperties ParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppConfig::Extension.Parameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Required" JSON..= required]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Dynamic" Prelude.<$> dynamic]))}
instance JSON.ToJSON ParameterProperty where
  toJSON ParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Required" JSON..= required]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Dynamic" Prelude.<$> dynamic])))
instance Property "Description" ParameterProperty where
  type PropertyType "Description" ParameterProperty = Value Prelude.Text
  set newValue ParameterProperty {..}
    = ParameterProperty {description = Prelude.pure newValue, ..}
instance Property "Dynamic" ParameterProperty where
  type PropertyType "Dynamic" ParameterProperty = Value Prelude.Bool
  set newValue ParameterProperty {..}
    = ParameterProperty {dynamic = Prelude.pure newValue, ..}
instance Property "Required" ParameterProperty where
  type PropertyType "Required" ParameterProperty = Value Prelude.Bool
  set newValue ParameterProperty {..}
    = ParameterProperty {required = newValue, ..}
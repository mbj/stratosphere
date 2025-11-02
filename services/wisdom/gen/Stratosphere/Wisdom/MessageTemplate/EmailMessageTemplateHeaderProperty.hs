module Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateHeaderProperty (
        EmailMessageTemplateHeaderProperty(..),
        mkEmailMessageTemplateHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailMessageTemplateHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplateheader.html>
    EmailMessageTemplateHeaderProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplateheader.html#cfn-wisdom-messagetemplate-emailmessagetemplateheader-name>
                                        name :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplateheader.html#cfn-wisdom-messagetemplate-emailmessagetemplateheader-value>
                                        value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailMessageTemplateHeaderProperty ::
  EmailMessageTemplateHeaderProperty
mkEmailMessageTemplateHeaderProperty
  = EmailMessageTemplateHeaderProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties EmailMessageTemplateHeaderProperty where
  toResourceProperties EmailMessageTemplateHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.EmailMessageTemplateHeader",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON EmailMessageTemplateHeaderProperty where
  toJSON EmailMessageTemplateHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" EmailMessageTemplateHeaderProperty where
  type PropertyType "Name" EmailMessageTemplateHeaderProperty = Value Prelude.Text
  set newValue EmailMessageTemplateHeaderProperty {..}
    = EmailMessageTemplateHeaderProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" EmailMessageTemplateHeaderProperty where
  type PropertyType "Value" EmailMessageTemplateHeaderProperty = Value Prelude.Text
  set newValue EmailMessageTemplateHeaderProperty {..}
    = EmailMessageTemplateHeaderProperty
        {value = Prelude.pure newValue, ..}
module Stratosphere.Pinpoint.InAppTemplate.HeaderConfigProperty (
        HeaderConfigProperty(..), mkHeaderConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeaderConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-headerconfig.html>
    HeaderConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-headerconfig.html#cfn-pinpoint-inapptemplate-headerconfig-alignment>
                          alignment :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-headerconfig.html#cfn-pinpoint-inapptemplate-headerconfig-header>
                          header :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-inapptemplate-headerconfig.html#cfn-pinpoint-inapptemplate-headerconfig-textcolor>
                          textColor :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeaderConfigProperty :: HeaderConfigProperty
mkHeaderConfigProperty
  = HeaderConfigProperty
      {haddock_workaround_ = (), alignment = Prelude.Nothing,
       header = Prelude.Nothing, textColor = Prelude.Nothing}
instance ToResourceProperties HeaderConfigProperty where
  toResourceProperties HeaderConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::InAppTemplate.HeaderConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Alignment" Prelude.<$> alignment,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "TextColor" Prelude.<$> textColor])}
instance JSON.ToJSON HeaderConfigProperty where
  toJSON HeaderConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Alignment" Prelude.<$> alignment,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "TextColor" Prelude.<$> textColor]))
instance Property "Alignment" HeaderConfigProperty where
  type PropertyType "Alignment" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {alignment = Prelude.pure newValue, ..}
instance Property "Header" HeaderConfigProperty where
  type PropertyType "Header" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {header = Prelude.pure newValue, ..}
instance Property "TextColor" HeaderConfigProperty where
  type PropertyType "TextColor" HeaderConfigProperty = Value Prelude.Text
  set newValue HeaderConfigProperty {..}
    = HeaderConfigProperty {textColor = Prelude.pure newValue, ..}
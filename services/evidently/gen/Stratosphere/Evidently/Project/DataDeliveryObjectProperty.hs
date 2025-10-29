module Stratosphere.Evidently.Project.DataDeliveryObjectProperty (
        module Exports, DataDeliveryObjectProperty(..),
        mkDataDeliveryObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Project.S3DestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataDeliveryObjectProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-datadeliveryobject.html>
    DataDeliveryObjectProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-datadeliveryobject.html#cfn-evidently-project-datadeliveryobject-loggroup>
                                logGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-project-datadeliveryobject.html#cfn-evidently-project-datadeliveryobject-s3>
                                s3 :: (Prelude.Maybe S3DestinationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataDeliveryObjectProperty :: DataDeliveryObjectProperty
mkDataDeliveryObjectProperty
  = DataDeliveryObjectProperty
      {logGroup = Prelude.Nothing, s3 = Prelude.Nothing}
instance ToResourceProperties DataDeliveryObjectProperty where
  toResourceProperties DataDeliveryObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Project.DataDeliveryObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogGroup" Prelude.<$> logGroup,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON DataDeliveryObjectProperty where
  toJSON DataDeliveryObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogGroup" Prelude.<$> logGroup,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "LogGroup" DataDeliveryObjectProperty where
  type PropertyType "LogGroup" DataDeliveryObjectProperty = Value Prelude.Text
  set newValue DataDeliveryObjectProperty {..}
    = DataDeliveryObjectProperty {logGroup = Prelude.pure newValue, ..}
instance Property "S3" DataDeliveryObjectProperty where
  type PropertyType "S3" DataDeliveryObjectProperty = S3DestinationProperty
  set newValue DataDeliveryObjectProperty {..}
    = DataDeliveryObjectProperty {s3 = Prelude.pure newValue, ..}
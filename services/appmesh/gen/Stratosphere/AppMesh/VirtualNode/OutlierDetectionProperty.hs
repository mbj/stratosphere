module Stratosphere.AppMesh.VirtualNode.OutlierDetectionProperty (
        module Exports, OutlierDetectionProperty(..),
        mkOutlierDetectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.VirtualNode.DurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutlierDetectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-outlierdetection.html>
    OutlierDetectionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-outlierdetection.html#cfn-appmesh-virtualnode-outlierdetection-baseejectionduration>
                              baseEjectionDuration :: DurationProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-outlierdetection.html#cfn-appmesh-virtualnode-outlierdetection-interval>
                              interval :: DurationProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-outlierdetection.html#cfn-appmesh-virtualnode-outlierdetection-maxejectionpercent>
                              maxEjectionPercent :: (Value Prelude.Integer),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-outlierdetection.html#cfn-appmesh-virtualnode-outlierdetection-maxservererrors>
                              maxServerErrors :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutlierDetectionProperty ::
  DurationProperty
  -> DurationProperty
     -> Value Prelude.Integer
        -> Value Prelude.Integer -> OutlierDetectionProperty
mkOutlierDetectionProperty
  baseEjectionDuration
  interval
  maxEjectionPercent
  maxServerErrors
  = OutlierDetectionProperty
      {haddock_workaround_ = (),
       baseEjectionDuration = baseEjectionDuration, interval = interval,
       maxEjectionPercent = maxEjectionPercent,
       maxServerErrors = maxServerErrors}
instance ToResourceProperties OutlierDetectionProperty where
  toResourceProperties OutlierDetectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.OutlierDetection",
         supportsTags = Prelude.False,
         properties = ["BaseEjectionDuration" JSON..= baseEjectionDuration,
                       "Interval" JSON..= interval,
                       "MaxEjectionPercent" JSON..= maxEjectionPercent,
                       "MaxServerErrors" JSON..= maxServerErrors]}
instance JSON.ToJSON OutlierDetectionProperty where
  toJSON OutlierDetectionProperty {..}
    = JSON.object
        ["BaseEjectionDuration" JSON..= baseEjectionDuration,
         "Interval" JSON..= interval,
         "MaxEjectionPercent" JSON..= maxEjectionPercent,
         "MaxServerErrors" JSON..= maxServerErrors]
instance Property "BaseEjectionDuration" OutlierDetectionProperty where
  type PropertyType "BaseEjectionDuration" OutlierDetectionProperty = DurationProperty
  set newValue OutlierDetectionProperty {..}
    = OutlierDetectionProperty {baseEjectionDuration = newValue, ..}
instance Property "Interval" OutlierDetectionProperty where
  type PropertyType "Interval" OutlierDetectionProperty = DurationProperty
  set newValue OutlierDetectionProperty {..}
    = OutlierDetectionProperty {interval = newValue, ..}
instance Property "MaxEjectionPercent" OutlierDetectionProperty where
  type PropertyType "MaxEjectionPercent" OutlierDetectionProperty = Value Prelude.Integer
  set newValue OutlierDetectionProperty {..}
    = OutlierDetectionProperty {maxEjectionPercent = newValue, ..}
instance Property "MaxServerErrors" OutlierDetectionProperty where
  type PropertyType "MaxServerErrors" OutlierDetectionProperty = Value Prelude.Integer
  set newValue OutlierDetectionProperty {..}
    = OutlierDetectionProperty {maxServerErrors = newValue, ..}